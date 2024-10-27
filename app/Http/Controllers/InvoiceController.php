<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\Job;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    //
    public function createInvoice(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'job_id' => 'required',
            // 'inv_no' => 'required',
            'inv_date' => 'required',
            'job_cost' => 'required',
            'job_total' => 'required',
            'vat' => 'required',
            'data' => 'required|array',

        ]);

        // Create the invoice
        $invoice = Invoice::create([
            'job_id' => $validatedData['job_id'],
            // 'inv_no' => $validatedData['inv_no'],
            'inv_date' => $validatedData['inv_date'],
            'job_total' => $validatedData['job_total'],
            'job_cost' => $validatedData['job_cost'],
            'vat' => $validatedData['vat'],
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


    public function updateInvoice(Request $request, int $id): JsonResponse
    {
        // Simplified validation of incoming request data
        $validatedData = $request->validate([
            'job_id' => 'required',  // Ensure job_id is present
            // 'inv_no' => 'required',  // Ensure inv_no is present
            'inv_date' => 'required',  // Ensure inv_date is present
            'job_cost' => 'required',  // Ensure job_cost is present
            'job_total' => 'required',  // Ensure job_total is present
            'vat' => 'required',  // Ensure job_total is present
            'data' => 'required',  // Ensure data is present
        ]);

        try {
            // Find the invoice by ID
            $invoice = Invoice::find($id);

            // Check if the invoice exists
            if (!$invoice) {
                return response()->json([
                    'success' => 0,
                    'message' => 'Invoice not found.',
                ], 404);
            }

            // Update the invoice with the validated data
            $invoice->update([
                'job_id' => $validatedData['job_id'],
                // 'inv_no' => $validatedData['inv_no'],
                'inv_date' => $validatedData['inv_date'],
                'job_cost' => $validatedData['job_cost'],
                'job_total' => $validatedData['job_total'],
                'vat' => $validatedData['vat'],
                'data' => $validatedData['data'],
            ]);


            // Return success response with the updated invoice
            return response()->json([
                'success' => 1,
                'message' => 'Invoice updated successfully.',
                'invoice_data' => $invoice,
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => 0,
                'message' => 'Failed to update invoice.',
                'error' => $e->getMessage(),
            ], 500);
        }
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

