import com.repo.School
class BootStrap {

    def init = { servletContext ->
		if(!School.count()) {
			def maria = new School(name: "Maria Teresa Piccio", code:"MTP", address:"Cape Street", emailDomain:"@maria-teresa.com.au").save(failOnError: true)
			def straw = new School(name: "Straw Nest Primary School", code: "003", address:"10 Showground Road", emailDomain: "@straw-nest.com.au").save(failOnError: true)
			def francis = new School(name: "Francis Park High School", code: "004", address:"21 Richmond Road", emailDomain: "@francis-park.com.au").save(failOnError: true)
			def nomen = new School(name:"Nomen Nescio", code:"NN", address:"McDonald Street", emailDomain:"@nomen-nescio.com.au").save(failOnError: true)
		}
		
    }
    def destroy = {
    }
}
