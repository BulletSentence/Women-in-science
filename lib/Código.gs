function doGet(request) {
  // Pegando a planilha atual como ativa
  var sheet = SpreadsheetApp.getActiveSheet();
  var data = sheet.getDataRange().getValues();

  var dataArray = [];
  for (var i = 1; i < data.length; i++){
    var record = {};
    // Percorrendo os campos da tabela
    record['question'] = data[i][0].toString();
    record['answer1'] = data[i][1].toString();
    record['answer2'] = data[i][2].toString();
    dataArray.push(record);
}

  var result = {};
  result['questions'] = dataArray;
  var json = JSON.stringify(result);
  return ContentService.createTextOutput(json).setMimeType(ContentService.MimeType.JSON);
}