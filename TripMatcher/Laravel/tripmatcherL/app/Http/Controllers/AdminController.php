<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AdminPage;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $admin = AdminPage::all();
        return view('index', compact('admin'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $storeData = $request->validate([
            'Image' => 'required|max:255',
            'Title' => 'required|max:255',
            'Summary' => 'required|max:255',
            'Country_id' => 'required|numeric',
            'Added_date' => 'required|max:255',
        ]);
        $admin = AdminPage::create($storeData);

        return redirect('/index')->with('completed', 'Trip has been saved!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $admin = AdminPage::findOrFail($id);
        return view('edit', compact('admin'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $updateData = $request->validate([
            'Image' => 'required|max:255',
            'Title' => 'required|max:255',
            'Summary' => 'required|max:255',
            'Country_id' => 'required|numeric',
            'Added_date' => 'required|max:255',
        ]);
        AdminPage::whereId($id)->update($updateData);
        return redirect('/index')->with('completed', 'Trip has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $admin = AdminPage::findOrFail($id);
        $admin->delete();

        return redirect('/index')->with('completed', 'Trip has been deleted');
    }
}
