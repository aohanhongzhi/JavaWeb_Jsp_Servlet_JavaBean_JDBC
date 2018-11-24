package servlet;

import java.util.ArrayList;
import java.util.List;

public class NoteBean {
	public List<Note> findAllNotes() {
		try {
			NoteDAO noteDAO = new NoteDAO();
			
			return noteDAO.findAll();
			

		} catch (Exception e) {
			System.out.println("Could not find all notes!");
		}

		return new ArrayList<Note>();

	}

}
