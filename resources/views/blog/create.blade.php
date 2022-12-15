@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Create Blog</div>

                <div class="card-body">
                    @if(session('status'))
                    <div class="alert alert-success mb-1 mt-1">
                        {{ session('status') }}
                    </div>
                    @endif
                    <form action="{{ route('blog.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <strong>Title:</strong>
                                    <input type="text" name="title" class="form-control" placeholder="Title">
                                    @error('name')
                                    <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <strong>Category:</strong>
                                    <select name="category_id" class="form-control">
                                        <option value="">Select Category</option>
                                    <?php
                                    foreach ($category as $row) {
                                            echo "<option value=".$row->id.">".$row->name."</option>";
                                    }
                                    ?>
                                    </select>
                                    @error('category_id')
                                    <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <strong>Description:</strong>                                                                        
                                    <textarea class="form-control" name="description"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary ml-3" style="margin-top: 5px;float:right;">Submit</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection