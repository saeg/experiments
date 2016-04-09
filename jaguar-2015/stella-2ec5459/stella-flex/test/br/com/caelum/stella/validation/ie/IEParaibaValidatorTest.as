package br.com.caelum.stella.validation.ie
{
	import br.com.caelum.stella.MessageProducer;
	import br.com.caelum.stella.validation.StellaValidator;

	public class IEParaibaValidatorTest extends IEValidatorTest {
		
		/*
		* Formato: 8 dígitos (empresa)+1 dígito verificador Exemplo: 16.000.001-7
		*/
		private static const wrongCheckDigitUnformattedString:String = '160000018';		
		private static const validUnformattedString:String = '160000017';		
		private static const validFormattedString:String = '16.000.001-7';		
		private static const validValues:Array = ['16.030.321-4', '16.136.565-5', '16.111.243-9', '16.105.973-2',
			'16.128.044-7', '16.125.311-3', '16.081.819-2', '16.136.684-8', '16.138.682-2', '16.093.179-7',
			'16.107.903-2', '16.041.136-0', '16.037.237-2', '16.120.055-9', '16.145.767-3', '16.139.881-2',
			'16.119.904-6', '16.001.810-2', '16.054.111-5', '16.124.276-6', '16.143.561-0', '16.142.444-9',
			'16.145.427-5', '16.122.174-2', '16.083.425-2', '16.141.248-3', '16.008.075-4', '16.111.650-7',
			'16.119.800-7', '16.019.079-7', '16.138.318-1', '16.089.064-0', '16.142.101-6', '16.081.818-4',
			'16.081.822-2', '16.095.579-3', '16.124.477-7', '16.083.791-0', '16.143.272-7', '16.106.538-4',
			'16.141.656-0', '16.119.442-7', '16.096.576-4', '16.128.124-9', '16.127.672-5', '16.142.572-0',
			'16.142.949-1', '16.139.813-8', '16.113.826-8', '16.146.528-5', '16.130.134-7', '16.138.646-6',
			'16.116.736-5', '16.095.954-3', '16.026.405-7', '16.093.247-5', '16.081.868-0', '16.089.511-1',
			'16.131.777-4', '16.121.587-4', '16.102.832-2', '16.119.423-0', '16.087.057-7', '16.087.084-4',
			'16.123.618-9', '16.131.489-9', '16.138.759-4', '16.100.059-2', '16.130.669-1', '16.135.582-0',
			'16.141.428-1', '16.089.499-9', '16.092.540-1', '16.078.742-4', '16.024.809-4', '16.117.924-0',
			'16.134.298-1', '16.115.226-0', '16.136.679-1', '16.032.092-5', '16.125.972-3', '16.120.072-9',
			'16.035.028-0', '16.111.113-0', '16.142.454-6', '16.083.369-8', '16.136.843-3', '16.045.287-2',
			'16.016.426-5', '16.144.885-2', '16.125.190-0', '16.131.670-0', '16.020.290-6', '16.141.813-9',
			'16.112.251-5', '16.116.532-0', '16.128.287-3', '16.133.337-0', '16.094.332-9', '16.143.134-8',
			'16.145.100-4', '16.037.790-0', '16.024.850-7', '16.114.527-2', '16.048.430-8', '16.144.730-9',
			'16.119.196-7', '16.129.993-8', '16.134.440-2', '16.126.097-7', '16.134.885-8', '16.123.023-7',
			'16.112.109-8', '16.110.436-3', '16.118.529-0', '16.130.206-8', '16.094.207-1', '16.025.302-0',
			'16.063.558-6', '16.112.115-2', '16.123.272-8', '16.109.949-1', '16.123.808-4', '16.134.740-1',
			'16.145.967-6', '16.143.643-9', '16.132.747-8', '16.008.204-8', '16.111.640-0', '16.145.687-1',
			'16.112.141-1', '16.146.850-0', '16.136.182-0', '16.033.061-0', '16.039.221-7', '16.136.627-9',
			'16.027.879-1', '16.115.898-6', '16.132.307-3', '16.122.225-0', '16.138.663-6', '16.119.798-1',
			'16.139.833-2', '16.138.704-7', '16.119.357-9', '16.099.435-7', '16.128.415-9', '16.109.295-0',
			'16.080.016-1', '16.083.405-8', '16.037.595-9', '16.089.619-3', '16.024.737-3', '16.012.219-8',
			'16.129.563-0', '16.056.707-6', '16.101.941-2', '16.001.893-5', '16.070.891-5', '16.037.277-1',
			'16.047.079-0', '16.129.491-0', '16.119.421-4', '16.107.997-0', '16.012.105-1', '16.047.548-1',
			'16.125.718-6', '16.106.233-4', '16.001.654-1', '16.027.781-7', '16.130.698-5', '16.105.977-5',
			'16.119.516-4', '16.033.063-7', '16.087.684-2', '16.061.384-1', '16.100.076-2', '16.106.872-3',
			'16.141.179-7', '16.028.224-1', '16.014.162-1', '16.080.824-3', '16.124.936-1', '16.000.025-4',
			'16.102.114-0', '16.136.845-0', '16.144.266-8', '16.117.541-4', '16.146.869-1', '16.136.825-5',
			'16.123.891-2', '16.117.125-7', '16.128.430-2', '16.144.702-3', '16.111.213-7', '16.140.836-2',
			'16.132.647-1', '16.103.026-2', '16.144.250-1', '16.020.093-8', '16.107.271-2', '16.119.561-0',
			'16.102.598-6', '16.008.102-5', '16.136.828-0', '16.041.116-5', '16.118.315-8', '16.142.163-6',
			'16.001.788-2', '16.134.266-3', '16.027.870-8', '16.118.161-9', '16.139.896-0', '16.038.517-2',
			'16.136.590-6', '16.067.897-8', '16.136.638-4', '16.000.159-5', '16.125.470-5', '16.128.203-2',
			'16.001.701-7', '16.130.883-0', '16.130.169-0', '16.082.583-0', '16.126.388-7', '16.114.135-8',
			'16.135.596-0', '16.114.071-8', '16.090.525-7', '16.136.106-4', '16.125.352-0', '16.117.878-2',
			'16.133.788-0', '16.117.817-0', '16.081.803-6', '16.146.390-8', '16.105.979-1', '16.131.818-5',
			'16.092.381-6', '16.114.291-5', '16.031.453-4', '16.132.444-4', '16.030.912-3', '16.147.846-8',
			'16.112.553-0', '16.144.099-1', '16.147.339-3', '16.104.112-4', '16.136.700-3', '16.146.551-0',
			'16.120.695-6', '16.015.948-2', '16.103.382-2', '16.144.274-9', '16.138.719-5', '16.031.555-7',
			'16.143.233-6', '16.001.941-9', '16.102.173-5', '16.093.704-3', '16.123.500-0', '16.084.862-8',
			'16.132.436-3', '16.136.758-5', '16.118.959-8', '16.135.564-1', '16.037.646-7', '16.147.829-8',
			'16.086.054-7', '16.045.309-7', '16.145.926-9', '16.136.127-7', '16.123.918-8', '16.079.048-4',
			'16.134.188-8', '16.048.163-5', '16.146.966-3', '16.075.118-7', '16.087.059-3', '16.144.069-0',
			'16.025.387-0', '16.095.952-7', '16.139.869-3', '16.110.475-4', '16.020.236-1', '16.111.292-7',
			'16.120.586-0', '16.134.329-5', '16.123.409-7', '16.133.260-9', '16.118.679-3', '16.100.685-0',
			'16.011.976-6', '16.130.099-5', '16.012.860-9', '16.142.848-7', '16.089.072-1', '16.118.317-4',
			'16.046.281-9', '16.147.839-5', '16.120.993-9', '16.079.498-6', '16.049.309-9', '16.147.520-5',
			'16.127.312-2', '16.120.859-2', '16.126.735-1', '16.067.498-0', '16.106.566-0', '16.096.966-2',
			'16.131.388-4', '16.111.125-4', '16.147.840-9', '16.080.878-2', '16.085.501-2', '16.122.755-4',
			'16.115.107-8', '16.131.982-3', '16.144.718-0', '16.146.183-2', '16.129.707-2', '16.118.574-6',
			'16.135.708-3', '16.135.721-0', '16.046.339-4', '16.129.136-8', '16.025.319-5', '16.096.284-6',
			'16.136.837-9', '16.039.234-9', '16.020.416-0', '16.116.421-8', '16.062.092-9', '16.048.449-9',
			'16.095.486-0', '16.138.312-2', '16.089.572-3', '16.134.213-2'];
		
		public function IEParaibaValidatorTest() {
			super(wrongCheckDigitUnformattedString, validUnformattedString, validFormattedString, validValues);
		}
		
		override protected function getValidator(messageProducer:MessageProducer, isFormatted:Boolean):StellaValidator {
			return new IEParaibaValidator(isFormatted, messageProducer);
		}
	}
}