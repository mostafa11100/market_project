String query_insert = ''' INSERT INTO  test (
     name, details, count,
     image, color, price,
     size, category_name
   ) VALUES (?, ?, ?, ?, ?, ?,?, ?) ''';
String query = 'SELECT * FROM test';
