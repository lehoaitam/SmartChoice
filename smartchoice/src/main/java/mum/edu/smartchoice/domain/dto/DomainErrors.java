package mum.edu.smartchoice.domain.dto;

 	import java.util.ArrayList;
	import java.util.List;
	 
	public class DomainErrors {
	 
	    private String errorType;
		private List<DomainError> errors = new ArrayList<DomainError>();

	    public List<DomainError> getErrors() {
			return errors;
		}

		public void setErrors(List<DomainError> errors) {
			this.errors = errors;
		}

	 
 	    public void addError(DomainError error) {
 	        errors.add(error);
	    }
 	    
		public String getErrorType() {
			return errorType;
		}
		public void setErrorType(String errorType) {
			this.errorType = errorType;
		}
	 

	 
 	}
	
 
