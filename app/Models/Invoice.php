<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Invoice extends Model
{
    use HasFactory;

    protected $table = "invoices";
    protected $primaryKey = "id";

    protected $fillable = [
        'job_id',    // Add job_id to the fillable array
        'inv_no',
        'inv_date',
        'data',
    ];
    public function job(): BelongsTo
    {
        return $this->belongsTo(Job::class, "job_id", "id");
    }
    protected $casts = [
        "data" => "array"
    ];
}

