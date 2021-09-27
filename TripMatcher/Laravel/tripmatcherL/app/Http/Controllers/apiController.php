<?php

namespace App\Http\Controllers;
use App\Models\Triptable;
use Illuminate\Support\Facades\Request;


class apiController extends Controller
{
    public function index()
    {
        $apiModel = Triptable::all();
        return view('index', compact('apiModel'));
    }

    public function show(Request $article)
    {
        $apiModel = Triptable::all();
        return view('welcome', compact('apiModel'));
    }
    public function create()
    {
        return view('create');
    }
    
    public function store(Request $request)
    {
        $storeData = $request->validate([
            'Image' => 'required|max:500',
            'Title' => 'required|max:255',
            'Summary' => 'required|max:500',
            'Country_id' => 'required|max:10',
            'Added_date' => 'required|max:500',
        ]);
        $apiModel = Triptable::create($storeData);

        return redirect('/index')->with('succes', 'Trip has been saved!');
    }

    public function edit($id)
    {
        $apiModel = Triptable::findOrFail($id);
        return view('edit', compact('apiModel'));
    }
    
    
    public function update(Request $request, $id)
    {
        $updateData = $request->validate([
            'Image' => 'required|numeric',
            'Title' => 'required|max:255',
            'Summary' => 'required|max:500',
            'Country_id' => 'required|max:10',
            'Added_date' => 'required|max:500',
        ]);
        Triptable::whereId($id)->update($updateData);
        return redirect('/index')->with('succes', 'Trip has been updated');
    }

    public function destroy($id)
    {
        $apiModel = Triptable::findOrFail($id);
        $apiModel->delete();

        return redirect('/index')->with('succes', 'Trip has been deleted');
    }
}

