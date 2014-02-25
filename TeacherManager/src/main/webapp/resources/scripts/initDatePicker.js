var editor = null;
var lastTextarea = null;
$(function() {
	 $('.datetimepicker').datetimepicker({
	     language:  'zh-CN',
	     format: 'yyyy-mm-dd',
	     weekStart: 1,
	     todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	 });
	 initRichContentEditor();
	 
	 $("form:first").submit(function(e) {
	     var self = this;
	     e.preventDefault();
	     //检测输入框
	     var inputs = $('input');//input
	     var textareas = $('textarea');//textarea
	     var selects = $('select');//select
	     for(var i=0;i<inputs.length;i+=1) {
	    	 if($(inputs[i]).attr('name')=='id')continue;
	    	 if(!$(inputs[i]).val()) {
	    		 alert('请填写:'+($(inputs[i]).attr('placeholder')?$(inputs[i]).attr('placeholder'):'内容'));
	    		 $(inputs[i]).focus();
	    		 return false;
	    	 }
	     }
	/*     for(var i=0;i<textareas.length;i+=1) {
	    	 if($(textareas[i]).attr('placeholder')&&!$(textareas[i]).html()) {
	    		 alert('请填写'+($(textareas[i]).attr('placeholder')?$(textareas[i]).attr('placeholder'):'完整信息，没有填无'));
	    		 $(textareas[i]).focus();
	    		 return false;
	    	 }
	     }*/
	     for(var i=0;i<selects.length;i+=1) {
	    	 if($(selects[i]).val()=='-1'){
	    		 alert('请完成下拉内容');
	    		 $(selects[i]).focus();
	    		 return false;
	    	 }
	     }
	     if(confirm('确认提交?')) {
	    	 self.submit();
	     }
	     return false; //is superfluous, but I put it here as a fallback
	});
	 
	 //删除事件
	 $('a').each(function(e,el) {
		 if(el.innerHTML==='删除') {
			 $(el).click(function() {
				 if(confirm('确认删除?')){
					 return true;
				 }	else {
					 return false;
				 }
			 });
		 }
	 });
	 
});

function initRichContentEditor() {
	var textarea = $('textarea');
	var editorArr = [];
	for(var i=0;i<textarea.length;i+=1) {
		var name = $(textarea[i]).attr('name');
		editorArr[name] = createEditor(name);
	}
	return editorArr;
}

function createEditor(name) {
	 KindEditor.basePath = basepath+'/resources/';
     return KindEditor.create('textarea[name="'+name+'"]', {
         resizeType : 1,
         allowPreviewEmoticons : false,
         allowImageUpload : false,
         items : [
             'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
             'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
             'insertunorderedlist']
     });
}

function modify(id) {
	 if(!id)return;
	 $('#id').val(id);
	 var data = $('.'+id+' td');
	 for(var i=0;i<data.length;i+=1) {
		if(data[i].className) {
			$('#'+data[i].className).val($(data[i]).text());
		}				 
	 }
	 $('html, body').animate({ scrollTop: 0 }, 'fast');
}




function checkForm() {
	console.log('表单验证');
}