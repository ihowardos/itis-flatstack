CKEDITOR.editorConfig = function( config )
{
  config.toolbar = 'MyToolbar';

  config.toolbar_MyToolbar =
  [
    { name: 'document', items : [ 'NewPage','Preview' ] },
    { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','Scayt' ] },
    { name: 'insert', items : [ 'Image','Table','HorizontalRule','Smiley','SpecialChar' ] },
                '/',
    { name: 'styles', items : [ 'Styles','Format', 'Font', 'FontSize'] },
    { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat', '-', 'TextColor', 'BGColor' ] },
    { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote', 'JustifyLeft', 'JustifyCenter', 'JustifyRight'] },
    { name: 'links', items : [ 'Link','Unlink'] },
    { name: 'tools', items : [ 'Maximize'] }
  ];
    config.removePlugins = 'elementspath';
};
