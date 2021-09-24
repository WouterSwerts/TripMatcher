<?php

namespace App\Http\Controllers;

use App\Models\apiModel;
use Illuminate\Support\Facades\Request;

class apiController extends Controller
{
    public function index()
    {
        return apiModel::all();
    }

    public function show(apiModel $article)
    {
        return $article;
    }

    public function store(Request $request)
    {
        $article = apiModel::create($request->all());

        return response()->json($article, 201);
    }

    public function update(Request $request, apiModel $article)
    {
        $article->update($request->all());

        return response()->json($article, 200);
    }

    public function delete(apiModel $article)
    {
        $article->delete();

        return response()->json(null, 204);
    }
}

