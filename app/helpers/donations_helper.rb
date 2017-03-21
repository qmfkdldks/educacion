module DonationsHelper
	def createDonateButton(price)
		# Use your credentials
		client_id = '1786301777205622'
		client_secret = '70YhgEZZ9b9XfA3hToxOHXzfAnXXawaw'

		mp_client = MercadoPago::Client.new(client_id, client_secret)

		# Need to change reference generator
		data = {
			items: [
			{
			  title:        "Donar",
			  description:  "Donar para apoyar el avence de la educación en Argentina.",
			  quantity:     1,
			  unit_price:   price,
			  currency_id:  "ARS",
			}
			],
			payer: {
			name:     "Donador"
			},
			back_urls: {
			pending: "https://www.site.com/pending",
			success: "http://www.site.com/success",
			failure: "http://www.site.com/failure"
			}
		}

		payment = mp_client.create_preference(data)
	end
end
