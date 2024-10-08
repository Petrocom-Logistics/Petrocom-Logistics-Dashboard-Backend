<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\Job;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    //
    public function createInvoice(Request $request): JsonResponse
    {
        // Validate the request data
        $validatedData = $request->validate([
            'job_id' => 'required',
            'inv_no' => 'required',
            'inv_date' => 'required',
            'job_cost' => 'required',
            'job_total' => 'required',
            'data' => 'required|array',

        ]);

        // Create the invoice
        $invoice = Invoice::create([
            'job_id' => $validatedData['job_id'],
            'inv_no' => $validatedData['inv_no'],
            'inv_date' => $validatedData['inv_date'],
            'job_total' => $validatedData['inv_total'],
            'job_cost' => $validatedData['job_cost'],
            'data' => $validatedData['data'],
        ]);
        // Update the related job record with the created invoice ID
        Job::where('id', $validatedData['job_id'])->update(['invoice_id' => $invoice->id]);

        // Return a success response with the created invoice
        return response()->json([
            'success' => 1,
            'message' => 'Invoice created successfully.',
            'invoice_data' => $invoice,
        ]);
    }


    public function getInvoiceById(int $id): JsonResponse
    {
        // Retrieve the invoice with the associated job and client data
        $invoice = Invoice::with('job.client')->find($id);

        // Check if the invoice was found
        if (!$invoice) {
            return response()->json([
                'success' => 0,
                'message' => 'Invoice not found.',
            ], 404);
        }

        // Return the invoice data with the associated job and client information
        return response()->json([
            'success' => 1,
            'invoice' => $invoice,
        ], 200);
    }
}

