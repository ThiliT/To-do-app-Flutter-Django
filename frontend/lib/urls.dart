const String baseUrl = 'http://127.0.0.1:8000';

Uri retrieveUrl = Uri.parse('$baseUrl/notes/'); // Fetch all notes
Uri createUrl = Uri.parse('$baseUrl/notes/create/'); // Create a new note

Uri updateUrl(int id) {
  return Uri.parse('$baseUrl/notes/$id/update/'); // Update a specific note
}

Uri deleteUrl(int id) {
  return Uri.parse('$baseUrl/notes/$id/delete/'); // Delete a specific note
}

Uri getNoteUrl(int id) {
  return Uri.parse('$baseUrl/notes/$id/'); // Fetch a single note by ID
}
