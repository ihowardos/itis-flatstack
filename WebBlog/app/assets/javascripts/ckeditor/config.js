CKEDITOR.editorConfig = function( config ) {
  config.toolbar_Custom = [
    { name: 'document',    items : [ 'Source','-','Save','NewPage','DocProps','Preview','-','Templates' ] },
    { name: 'clipboard',   items : [ 'PasteFromWord','-','Undo','Redo' ] },
    { name: 'insert',      items : [ 'Image','Table','HorizontalRule','SpecialChar','PageBreak' ] },
    { name: 'tools',       items : [ 'Maximize', 'ShowBlocks','-','About' ] },
    '/',
    { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
    { name: 'paragraph',   items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
    { name: 'links',       items : [ 'Link','Unlink','Anchor' ] },
    '/',
    { name: 'styles',      items : [ 'Styles','Format','Font','FontSize' ] },
    { name: 'colors',      items : [ 'TextColor','BGColor' ] }
  ];

  config.toolbar = 'Custom';
};
