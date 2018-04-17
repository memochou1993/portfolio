<?php

// Home
Breadcrumbs::register('home.index', function ($breadcrumbs) {
    $breadcrumbs->push('首頁', url('/'));
});

// Home > Work > Index
Breadcrumbs::register('work.index', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('作品', route('work.index'));
});

// Home > Work > Create
Breadcrumbs::register('work.create', function ($breadcrumbs) {
    $breadcrumbs->parent('work.index');
    $breadcrumbs->push('新增');
});

// Home > Work > Show
Breadcrumbs::register('work.show', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('work.index');
    $breadcrumbs->push($work->title, route('work.show', $work));
});

// Home > Work > Show > Edit
Breadcrumbs::register('work.edit', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('work.show', $work);
    $breadcrumbs->push('編輯');
});

// Home > WorkTag > Create
Breadcrumbs::register('work.workTag.create', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('work.show', $work);
    $breadcrumbs->push('編輯');
});

// Home > Login
Breadcrumbs::register('login', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('登入');
});
