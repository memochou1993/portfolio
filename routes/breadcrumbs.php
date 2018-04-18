<?php

// Home
Breadcrumbs::register('home.index', function ($breadcrumbs) {
    $breadcrumbs->push('首頁', url('/'));
});

// Home > Works > Index
Breadcrumbs::register('works.index', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('作品', route('works.index'));
});

// Home > Works > Create
Breadcrumbs::register('works.create', function ($breadcrumbs) {
    $breadcrumbs->parent('works.index');
    $breadcrumbs->push('新增');
});

// Home > Works > Show
Breadcrumbs::register('works.show', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.index');
    $breadcrumbs->push($work->title, route('works.show', $work));
});

// Home > Works > Show > Edit
Breadcrumbs::register('works.edit', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.show', $work);
    $breadcrumbs->push('編輯');
});

// Home > WorkTags > Create
Breadcrumbs::register('works.workTags.create', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.show', $work);
    $breadcrumbs->push('編輯');
});

// Home > Login
Breadcrumbs::register('login', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('登入');
});
