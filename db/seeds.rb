# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed: Deleting existing records..."

puts "Seed: Deleting comments..."
Comment.delete_all

puts "Seed: Deleting user uploads associated with tickets..."
Userupload.delete_all

puts "Seed: Deleting tickets..."
Ticket.delete_all

puts "Seed: Deleting users..."
User.delete_all

puts "Seed: Deleting companies..."
Company.delete_all

puts "Seed: Seeding countries..."
country1 = Country.create!(name: 'Afghanistan', iso_alpha_2_code: 'AF', iso_alpha_3_code: 'AFG')
country2 = Country.create!(name: 'Aland Islands', iso_alpha_2_code: 'AX', iso_alpha_3_code: 'ALA')
country3 = Country.create!(name: 'Albania', iso_alpha_2_code: 'AL', iso_alpha_3_code: 'ALB')
country4 = Country.create!(name: 'Algeria', iso_alpha_2_code: 'DZ', iso_alpha_3_code: 'DZA')
country5 = Country.create!(name: 'American Samoa', iso_alpha_2_code: 'AS', iso_alpha_3_code: 'ASM')
country6 = Country.create!(name: 'Andorra', iso_alpha_2_code: 'AD', iso_alpha_3_code: 'AND')
country7 = Country.create!(name: 'Angola', iso_alpha_2_code: 'AO', iso_alpha_3_code: 'AGO')
country8 = Country.create!(name: 'Anguilla', iso_alpha_2_code: 'AI', iso_alpha_3_code: 'AIA')
country9 = Country.create!(name: 'Antarctica', iso_alpha_2_code: 'AQ', iso_alpha_3_code: 'ATA')
country10 = Country.create!(name: 'Antigua and Barbuda', iso_alpha_2_code: 'AG', iso_alpha_3_code: 'ATG')
country11 = Country.create!(name: 'Argentina', iso_alpha_2_code: 'AR', iso_alpha_3_code: 'ARG')
country12 = Country.create!(name: 'Armenia', iso_alpha_2_code: 'AM', iso_alpha_3_code: 'ARM')
country13 = Country.create!(name: 'Aruba', iso_alpha_2_code: 'AW', iso_alpha_3_code: 'ABW')
country14 = Country.create!(name: 'Australia', iso_alpha_2_code: 'AU', iso_alpha_3_code: 'AUS')
country15 = Country.create!(name: 'Austria', iso_alpha_2_code: 'AT', iso_alpha_3_code: 'AUT')
country16 = Country.create!(name: 'Azerbaijan', iso_alpha_2_code: 'AZ', iso_alpha_3_code: 'AZE')
country17 = Country.create!(name: 'Bahamas', iso_alpha_2_code: 'BS', iso_alpha_3_code: 'BHS')
country18 = Country.create!(name: 'Bahrain', iso_alpha_2_code: 'BH', iso_alpha_3_code: 'BHR')
country19 = Country.create!(name: 'Bangladesh', iso_alpha_2_code: 'BD', iso_alpha_3_code: 'BGD')
country20 = Country.create!(name: 'Barbados', iso_alpha_2_code: 'BB', iso_alpha_3_code: 'BRB')
country21 = Country.create!(name: 'Belarus', iso_alpha_2_code: 'BY', iso_alpha_3_code: 'BLR')
country22 = Country.create!(name: 'Belgium', iso_alpha_2_code: 'BE', iso_alpha_3_code: 'BEL')
country23 = Country.create!(name: 'Belize', iso_alpha_2_code: 'BZ', iso_alpha_3_code: 'BLZ')
country24 = Country.create!(name: 'Benin', iso_alpha_2_code: 'BJ', iso_alpha_3_code: 'BEN')
country25 = Country.create!(name: 'Bermuda', iso_alpha_2_code: 'BM', iso_alpha_3_code: 'BMU')
country26 = Country.create!(name: 'Bhutan', iso_alpha_2_code: 'BT', iso_alpha_3_code: 'BTN')
country27 = Country.create!(name: 'Bolivia', iso_alpha_2_code: 'BO', iso_alpha_3_code: 'BOL')
country28 = Country.create!(name: 'Bosnia and Herzegovina', iso_alpha_2_code: 'BA', iso_alpha_3_code: 'BIH')
country29 = Country.create!(name: 'Botswana', iso_alpha_2_code: 'BW', iso_alpha_3_code: 'BWA')
country30 = Country.create!(name: 'Bouvet Island', iso_alpha_2_code: 'BV', iso_alpha_3_code: 'BVT')
country31 = Country.create!(name: 'Brazil', iso_alpha_2_code: 'BR', iso_alpha_3_code: 'BRA')
country32 = Country.create!(name: 'British Virgin Islands', iso_alpha_2_code: 'VG', iso_alpha_3_code: 'VGB')
country33 = Country.create!(name: 'British Indian Ocean Territory', iso_alpha_2_code: 'IO', iso_alpha_3_code: 'IOT')
country34 = Country.create!(name: 'Brunei Darussalam', iso_alpha_2_code: 'BN', iso_alpha_3_code: 'BRN')
country35 = Country.create!(name: 'Bulgaria', iso_alpha_2_code: 'BG', iso_alpha_3_code: 'BGR')
country36 = Country.create!(name: 'Burkina Faso', iso_alpha_2_code: 'BF', iso_alpha_3_code: 'BFA')
country37 = Country.create!(name: 'Burundi', iso_alpha_2_code: 'BI', iso_alpha_3_code: 'BDI')
country38 = Country.create!(name: 'Cambodia', iso_alpha_2_code: 'KH', iso_alpha_3_code: 'KHM')
country39 = Country.create!(name: 'Cameroon', iso_alpha_2_code: 'CM', iso_alpha_3_code: 'CMR')
country40 = Country.create!(name: 'Canada', iso_alpha_2_code: 'CA', iso_alpha_3_code: 'CAN')
country41 = Country.create!(name: 'Cape Verde', iso_alpha_2_code: 'CV', iso_alpha_3_code: 'CPV')
country42 = Country.create!(name: 'Cayman Islands', iso_alpha_2_code: 'KY', iso_alpha_3_code: 'CYM')
country43 = Country.create!(name: 'Central African Republic', iso_alpha_2_code: 'CF', iso_alpha_3_code: 'CAF')
country44 = Country.create!(name: 'Chad', iso_alpha_2_code: 'TD', iso_alpha_3_code: 'TCD')
country45 = Country.create!(name: 'Chile', iso_alpha_2_code: 'CL', iso_alpha_3_code: 'CHL')
country46 = Country.create!(name: 'China', iso_alpha_2_code: 'CN', iso_alpha_3_code: 'CHN')
country47 = Country.create!(name: 'Hong Kong, SAR China', iso_alpha_2_code: 'HK', iso_alpha_3_code: 'HKG')
country48 = Country.create!(name: 'Macao, SAR China', iso_alpha_2_code: 'MO', iso_alpha_3_code: 'MAC')
country49 = Country.create!(name: 'Christmas Island', iso_alpha_2_code: 'CX', iso_alpha_3_code: 'CXR')
country50 = Country.create!(name: 'Cocos (Keeling) Islands', iso_alpha_2_code: 'CC', iso_alpha_3_code: 'CCK')
country51 = Country.create!(name: 'Colombia', iso_alpha_2_code: 'CO', iso_alpha_3_code: 'COL')
country52 = Country.create!(name: 'Comoros', iso_alpha_2_code: 'KM', iso_alpha_3_code: 'COM')
country53 = Country.create!(name: 'Congo (Brazzaville)', iso_alpha_2_code: 'CG', iso_alpha_3_code: 'COG')
country54 = Country.create!(name: 'Congo, (Kinshasa)', iso_alpha_2_code: 'CD', iso_alpha_3_code: 'COD')
country55 = Country.create!(name: 'Cook Islands', iso_alpha_2_code: 'CK', iso_alpha_3_code: 'COK')
country56 = Country.create!(name: 'Costa Rica', iso_alpha_2_code: 'CR', iso_alpha_3_code: 'CRI')
country57 = Country.create!(name: 'Cote dIvoire', iso_alpha_2_code: 'CI', iso_alpha_3_code: 'CIV')
country58 = Country.create!(name: 'Croatia', iso_alpha_2_code: 'HR', iso_alpha_3_code: 'HRV')
country59 = Country.create!(name: 'Cuba', iso_alpha_2_code: 'CU', iso_alpha_3_code: 'CUB')
country60 = Country.create!(name: 'Cyprus', iso_alpha_2_code: 'CY', iso_alpha_3_code: 'CYP')
country61 = Country.create!(name: 'Czech Republic', iso_alpha_2_code: 'CZ', iso_alpha_3_code: 'CZE')
country62 = Country.create!(name: 'Denmark', iso_alpha_2_code: 'DK', iso_alpha_3_code: 'DNK')
country63 = Country.create!(name: 'Djibouti', iso_alpha_2_code: 'DJ', iso_alpha_3_code: 'DJI')
country64 = Country.create!(name: 'Dominica', iso_alpha_2_code: 'DM', iso_alpha_3_code: 'DMA')
country65 = Country.create!(name: 'Dominican Republic', iso_alpha_2_code: 'DO', iso_alpha_3_code: 'DOM')
country66 = Country.create!(name: 'Ecuador', iso_alpha_2_code: 'EC', iso_alpha_3_code: 'ECU')
country67 = Country.create!(name: 'Egypt', iso_alpha_2_code: 'EG', iso_alpha_3_code: 'EGY')
country68 = Country.create!(name: 'El Salvador', iso_alpha_2_code: 'SV', iso_alpha_3_code: 'SLV')
country69 = Country.create!(name: 'Equatorial Guinea', iso_alpha_2_code: 'GQ', iso_alpha_3_code: 'GNQ')
country70 = Country.create!(name: 'Eritrea', iso_alpha_2_code: 'ER', iso_alpha_3_code: 'ERI')
country71 = Country.create!(name: 'Estonia', iso_alpha_2_code: 'EE', iso_alpha_3_code: 'EST')
country72 = Country.create!(name: 'Ethiopia', iso_alpha_2_code: 'ET', iso_alpha_3_code: 'ETH')
country73 = Country.create!(name: 'Falkland Islands (Malvinas)', iso_alpha_2_code: 'FK', iso_alpha_3_code: 'FLK')
country74 = Country.create!(name: 'Faroe Islands', iso_alpha_2_code: 'FO', iso_alpha_3_code: 'FRO')
country75 = Country.create!(name: 'Fiji', iso_alpha_2_code: 'FJ', iso_alpha_3_code: 'FJI')
country76 = Country.create!(name: 'Finland', iso_alpha_2_code: 'FI', iso_alpha_3_code: 'FIN')
country77 = Country.create!(name: 'France', iso_alpha_2_code: 'FR', iso_alpha_3_code: 'FRA')
country78 = Country.create!(name: 'French Guiana', iso_alpha_2_code: 'GF', iso_alpha_3_code: 'GUF')
country79 = Country.create!(name: 'French Polynesia', iso_alpha_2_code: 'PF', iso_alpha_3_code: 'PYF')
country80 = Country.create!(name: 'French Southern Territories', iso_alpha_2_code: 'TF', iso_alpha_3_code: 'ATF')
country81 = Country.create!(name: 'Gabon', iso_alpha_2_code: 'GA', iso_alpha_3_code: 'GAB')
country82 = Country.create!(name: 'Gambia', iso_alpha_2_code: 'GM', iso_alpha_3_code: 'GMB')
country83 = Country.create!(name: 'Georgia', iso_alpha_2_code: 'GE', iso_alpha_3_code: 'GEO')
country84 = Country.create!(name: 'Germany', iso_alpha_2_code: 'DE', iso_alpha_3_code: 'DEU')
country85 = Country.create!(name: 'Ghana', iso_alpha_2_code: 'GH', iso_alpha_3_code: 'GHA')
country86 = Country.create!(name: 'Gibraltar', iso_alpha_2_code: 'GI', iso_alpha_3_code: 'GIB')
country87 = Country.create!(name: 'Greece', iso_alpha_2_code: 'GR', iso_alpha_3_code: 'GRC')
country88 = Country.create!(name: 'Greenland', iso_alpha_2_code: 'GL', iso_alpha_3_code: 'GRL')
country89 = Country.create!(name: 'Grenada', iso_alpha_2_code: 'GD', iso_alpha_3_code: 'GRD')
country90 = Country.create!(name: 'Guadeloupe', iso_alpha_2_code: 'GP', iso_alpha_3_code: 'GLP')
country91 = Country.create!(name: 'Guam', iso_alpha_2_code: 'GU', iso_alpha_3_code: 'GUM')
country92 = Country.create!(name: 'Guatemala', iso_alpha_2_code: 'GT', iso_alpha_3_code: 'GTM')
country93 = Country.create!(name: 'Guernsey', iso_alpha_2_code: 'GG', iso_alpha_3_code: 'GGY')
country94 = Country.create!(name: 'Guinea', iso_alpha_2_code: 'GN', iso_alpha_3_code: 'GIN')
country95 = Country.create!(name: 'Guinea-Bissau', iso_alpha_2_code: 'GW', iso_alpha_3_code: 'GNB')
country96 = Country.create!(name: 'Guyana', iso_alpha_2_code: 'GY', iso_alpha_3_code: 'GUY')
country97 = Country.create!(name: 'Haiti', iso_alpha_2_code: 'HT', iso_alpha_3_code: 'HTI')
country98 = Country.create!(name: 'Heard and Mcdonald Islands', iso_alpha_2_code: 'HM', iso_alpha_3_code: 'HMD')
country99 = Country.create!(name: 'Holy See (Vatican City State)', iso_alpha_2_code: 'VA', iso_alpha_3_code: 'VAT')
country100 = Country.create!(name: 'Honduras', iso_alpha_2_code: 'HN', iso_alpha_3_code: 'HND')
country101 = Country.create!(name: 'Hungary', iso_alpha_2_code: 'HU', iso_alpha_3_code: 'HUN')
country102 = Country.create!(name: 'Iceland', iso_alpha_2_code: 'IS', iso_alpha_3_code: 'ISL')
country103 = Country.create!(name: 'India', iso_alpha_2_code: 'IN', iso_alpha_3_code: 'IND')
country104 = Country.create!(name: 'Indonesia', iso_alpha_2_code: 'ID', iso_alpha_3_code: 'IDN')
country105 = Country.create!(name: 'Iran, Islamic Republic of', iso_alpha_2_code: 'IR', iso_alpha_3_code: 'IRN')
country106 = Country.create!(name: 'Iraq', iso_alpha_2_code: 'IQ', iso_alpha_3_code: 'IRQ')
country107 = Country.create!(name: 'Ireland', iso_alpha_2_code: 'IE', iso_alpha_3_code: 'IRL')
country108 = Country.create!(name: 'Isle of Man', iso_alpha_2_code: 'IM', iso_alpha_3_code: 'IMN')
country109 = Country.create!(name: 'Israel', iso_alpha_2_code: 'IL', iso_alpha_3_code: 'ISR')
country110 = Country.create!(name: 'Italy', iso_alpha_2_code: 'IT', iso_alpha_3_code: 'ITA')
country111 = Country.create!(name: 'Jamaica', iso_alpha_2_code: 'JM', iso_alpha_3_code: 'JAM')
country112 = Country.create!(name: 'Japan', iso_alpha_2_code: 'JP', iso_alpha_3_code: 'JPN')
country113 = Country.create!(name: 'Jersey', iso_alpha_2_code: 'JE', iso_alpha_3_code: 'JEY')
country114 = Country.create!(name: 'Jordan', iso_alpha_2_code: 'JO', iso_alpha_3_code: 'JOR')
country115 = Country.create!(name: 'Kazakhstan', iso_alpha_2_code: 'KZ', iso_alpha_3_code: 'KAZ')
country116 = Country.create!(name: 'Kenya', iso_alpha_2_code: 'KE', iso_alpha_3_code: 'KEN')
country117 = Country.create!(name: 'Kiribati', iso_alpha_2_code: 'KI', iso_alpha_3_code: 'KIR')
country118 = Country.create!(name: 'Korea (North)', iso_alpha_2_code: 'KP', iso_alpha_3_code: 'PRK')
country119 = Country.create!(name: 'Korea (South)', iso_alpha_2_code: 'KR', iso_alpha_3_code: 'KOR')
country120 = Country.create!(name: 'Kuwait', iso_alpha_2_code: 'KW', iso_alpha_3_code: 'KWT')
country121 = Country.create!(name: 'Kyrgyzstan', iso_alpha_2_code: 'KG', iso_alpha_3_code: 'KGZ')
country122 = Country.create!(name: 'Lao PDR', iso_alpha_2_code: 'LA', iso_alpha_3_code: 'LAO')
country123 = Country.create!(name: 'Latvia', iso_alpha_2_code: 'LV', iso_alpha_3_code: 'LVA')
country124 = Country.create!(name: 'Lebanon', iso_alpha_2_code: 'LB', iso_alpha_3_code: 'LBN')
country125 = Country.create!(name: 'Lesotho', iso_alpha_2_code: 'LS', iso_alpha_3_code: 'LSO')
country126 = Country.create!(name: 'Liberia', iso_alpha_2_code: 'LR', iso_alpha_3_code: 'LBR')
country127 = Country.create!(name: 'Libya', iso_alpha_2_code: 'LY', iso_alpha_3_code: 'LBY')
country128 = Country.create!(name: 'Liechtenstein', iso_alpha_2_code: 'LI', iso_alpha_3_code: 'LIE')
country129 = Country.create!(name: 'Lithuania', iso_alpha_2_code: 'LT', iso_alpha_3_code: 'LTU')
country130 = Country.create!(name: 'Luxembourg', iso_alpha_2_code: 'LU', iso_alpha_3_code: 'LUX')
country131 = Country.create!(name: 'Macedonia, Republic of', iso_alpha_2_code: 'MK', iso_alpha_3_code: 'MKD')
country132 = Country.create!(name: 'Madagascar', iso_alpha_2_code: 'MG', iso_alpha_3_code: 'MDG')
country133 = Country.create!(name: 'Malawi', iso_alpha_2_code: 'MW', iso_alpha_3_code: 'MWI')
country134 = Country.create!(name: 'Malaysia', iso_alpha_2_code: 'MY', iso_alpha_3_code: 'MYS')
country135 = Country.create!(name: 'Maldives', iso_alpha_2_code: 'MV', iso_alpha_3_code: 'MDV')
country136 = Country.create!(name: 'Mali', iso_alpha_2_code: 'ML', iso_alpha_3_code: 'MLI')
country137 = Country.create!(name: 'Malta', iso_alpha_2_code: 'MT', iso_alpha_3_code: 'MLT')
country138 = Country.create!(name: 'Marshall Islands', iso_alpha_2_code: 'MH', iso_alpha_3_code: 'MHL')
country139 = Country.create!(name: 'Martinique', iso_alpha_2_code: 'MQ', iso_alpha_3_code: 'MTQ')
country140 = Country.create!(name: 'Mauritania', iso_alpha_2_code: 'MR', iso_alpha_3_code: 'MRT')
country141 = Country.create!(name: 'Mauritius', iso_alpha_2_code: 'MU', iso_alpha_3_code: 'MUS')
country142 = Country.create!(name: 'Mayotte', iso_alpha_2_code: 'YT', iso_alpha_3_code: 'MYT')
country143 = Country.create!(name: 'Mexico', iso_alpha_2_code: 'MX', iso_alpha_3_code: 'MEX')
country144 = Country.create!(name: 'Micronesia, Federated States of', iso_alpha_2_code: 'FM', iso_alpha_3_code: 'FSM')
country145 = Country.create!(name: 'Moldova', iso_alpha_2_code: 'MD', iso_alpha_3_code: 'MDA')
country146 = Country.create!(name: 'Monaco', iso_alpha_2_code: 'MC', iso_alpha_3_code: 'MCO')
country147 = Country.create!(name: 'Mongolia', iso_alpha_2_code: 'MN', iso_alpha_3_code: 'MNG')
country148 = Country.create!(name: 'Montenegro', iso_alpha_2_code: 'ME', iso_alpha_3_code: 'MNE')
country149 = Country.create!(name: 'Montserrat', iso_alpha_2_code: 'MS', iso_alpha_3_code: 'MSR')
country150 = Country.create!(name: 'Morocco', iso_alpha_2_code: 'MA', iso_alpha_3_code: 'MAR')
country151 = Country.create!(name: 'Mozambique', iso_alpha_2_code: 'MZ', iso_alpha_3_code: 'MOZ')
country152 = Country.create!(name: 'Myanmar', iso_alpha_2_code: 'MM', iso_alpha_3_code: 'MMR')
country153 = Country.create!(name: 'Namibia', iso_alpha_2_code: 'NA', iso_alpha_3_code: 'NAM')
country154 = Country.create!(name: 'Nauru', iso_alpha_2_code: 'NR', iso_alpha_3_code: 'NRU')
country155 = Country.create!(name: 'Nepal', iso_alpha_2_code: 'NP', iso_alpha_3_code: 'NPL')
country156 = Country.create!(name: 'Netherlands', iso_alpha_2_code: 'NL', iso_alpha_3_code: 'NLD')
country157 = Country.create!(name: 'Netherlands Antilles', iso_alpha_2_code: 'AN', iso_alpha_3_code: 'ANT')
country158 = Country.create!(name: 'New Caledonia', iso_alpha_2_code: 'NC', iso_alpha_3_code: 'NCL')
country159 = Country.create!(name: 'New Zealand', iso_alpha_2_code: 'NZ', iso_alpha_3_code: 'NZL')
country160 = Country.create!(name: 'Nicaragua', iso_alpha_2_code: 'NI', iso_alpha_3_code: 'NIC')
country161 = Country.create!(name: 'Niger', iso_alpha_2_code: 'NE', iso_alpha_3_code: 'NER')
country162 = Country.create!(name: 'Nigeria', iso_alpha_2_code: 'NG', iso_alpha_3_code: 'NGA')
country163 = Country.create!(name: 'Niue', iso_alpha_2_code: 'NU', iso_alpha_3_code: 'NIU')
country164 = Country.create!(name: 'Norfolk Island', iso_alpha_2_code: 'NF', iso_alpha_3_code: 'NFK')
country165 = Country.create!(name: 'Northern Mariana Islands', iso_alpha_2_code: 'MP', iso_alpha_3_code: 'MNP')
country166 = Country.create!(name: 'Norway', iso_alpha_2_code: 'NO', iso_alpha_3_code: 'NOR')
country167 = Country.create!(name: 'Oman', iso_alpha_2_code: 'OM', iso_alpha_3_code: 'OMN')
country168 = Country.create!(name: 'Pakistan', iso_alpha_2_code: 'PK', iso_alpha_3_code: 'PAK')
country169 = Country.create!(name: 'Palau', iso_alpha_2_code: 'PW', iso_alpha_3_code: 'PLW')
country170 = Country.create!(name: 'Palestinian Territory', iso_alpha_2_code: 'PS', iso_alpha_3_code: 'PSE')
country171 = Country.create!(name: 'Panama', iso_alpha_2_code: 'PA', iso_alpha_3_code: 'PAN')
country172 = Country.create!(name: 'Papua New Guinea', iso_alpha_2_code: 'PG', iso_alpha_3_code: 'PNG')
country173 = Country.create!(name: 'Paraguay', iso_alpha_2_code: 'PY', iso_alpha_3_code: 'PRY')
country174 = Country.create!(name: 'Peru', iso_alpha_2_code: 'PE', iso_alpha_3_code: 'PER')
country175 = Country.create!(name: 'Philippines', iso_alpha_2_code: 'PH', iso_alpha_3_code: 'PHL')
country176 = Country.create!(name: 'Pitcairn', iso_alpha_2_code: 'PN', iso_alpha_3_code: 'PCN')
country177 = Country.create!(name: 'Poland', iso_alpha_2_code: 'PL', iso_alpha_3_code: 'POL')
country178 = Country.create!(name: 'Portugal', iso_alpha_2_code: 'PT', iso_alpha_3_code: 'PRT')
country179 = Country.create!(name: 'Puerto Rico', iso_alpha_2_code: 'PR', iso_alpha_3_code: 'PRI')
country180 = Country.create!(name: 'Qatar', iso_alpha_2_code: 'QA', iso_alpha_3_code: 'QAT')
country181 = Country.create!(name: 'Réunion', iso_alpha_2_code: 'RE', iso_alpha_3_code: 'REU')
country182 = Country.create!(name: 'Romania', iso_alpha_2_code: 'RO', iso_alpha_3_code: 'ROU')
country183 = Country.create!(name: 'Russian Federation', iso_alpha_2_code: 'RU', iso_alpha_3_code: 'RUS')
country184 = Country.create!(name: 'Rwanda', iso_alpha_2_code: 'RW', iso_alpha_3_code: 'RWA')
country185 = Country.create!(name: 'Saint-Barthélemy', iso_alpha_2_code: 'BL', iso_alpha_3_code: 'BLM')
country186 = Country.create!(name: 'Saint Helena', iso_alpha_2_code: 'SH', iso_alpha_3_code: 'SHN')
country187 = Country.create!(name: 'Saint Kitts and Nevis', iso_alpha_2_code: 'KN', iso_alpha_3_code: 'KNA')
country188 = Country.create!(name: 'Saint Lucia', iso_alpha_2_code: 'LC', iso_alpha_3_code: 'LCA')
country189 = Country.create!(name: 'Saint-Martin (French part)', iso_alpha_2_code: 'MF', iso_alpha_3_code: 'MAF')
country190 = Country.create!(name: 'Saint Pierre and Miquelon', iso_alpha_2_code: 'PM', iso_alpha_3_code: 'SPM')
country191 = Country.create!(name: 'Saint Vincent and Grenadines', iso_alpha_2_code: 'VC', iso_alpha_3_code: 'VCT')
country192 = Country.create!(name: 'Samoa', iso_alpha_2_code: 'WS', iso_alpha_3_code: 'WSM')
country193 = Country.create!(name: 'San Marino', iso_alpha_2_code: 'SM', iso_alpha_3_code: 'SMR')
country194 = Country.create!(name: 'Sao Tome and Principe', iso_alpha_2_code: 'ST', iso_alpha_3_code: 'STP')
country195 = Country.create!(name: 'Saudi Arabia', iso_alpha_2_code: 'SA', iso_alpha_3_code: 'SAU')
country196 = Country.create!(name: 'Senegal', iso_alpha_2_code: 'SN', iso_alpha_3_code: 'SEN')
country197 = Country.create!(name: 'Serbia', iso_alpha_2_code: 'RS', iso_alpha_3_code: 'SRB')
country198 = Country.create!(name: 'Seychelles', iso_alpha_2_code: 'SC', iso_alpha_3_code: 'SYC')
country199 = Country.create!(name: 'Sierra Leone', iso_alpha_2_code: 'SL', iso_alpha_3_code: 'SLE')
country200 = Country.create!(name: 'Singapore', iso_alpha_2_code: 'SG', iso_alpha_3_code: 'SGP')
country201 = Country.create!(name: 'Slovakia', iso_alpha_2_code: 'SK', iso_alpha_3_code: 'SVK')
country202 = Country.create!(name: 'Slovenia', iso_alpha_2_code: 'SI', iso_alpha_3_code: 'SVN')
country203 = Country.create!(name: 'Solomon Islands', iso_alpha_2_code: 'SB', iso_alpha_3_code: 'SLB')
country204 = Country.create!(name: 'Somalia', iso_alpha_2_code: 'SO', iso_alpha_3_code: 'SOM')
country205 = Country.create!(name: 'South Africa', iso_alpha_2_code: 'ZA', iso_alpha_3_code: 'ZAF')
country206 = Country.create!(name: 'South Georgia and the South Sandwich Islands', iso_alpha_2_code: 'GS', iso_alpha_3_code: 'SGS')
country207 = Country.create!(name: 'South Sudan', iso_alpha_2_code: 'SS', iso_alpha_3_code: 'SSD')
country208 = Country.create!(name: 'Spain', iso_alpha_2_code: 'ES', iso_alpha_3_code: 'ESP')
country209 = Country.create!(name: 'Sri Lanka', iso_alpha_2_code: 'LK', iso_alpha_3_code: 'LKA')
country210 = Country.create!(name: 'Sudan', iso_alpha_2_code: 'SD', iso_alpha_3_code: 'SDN')
country211 = Country.create!(name: 'Suriname', iso_alpha_2_code: 'SR', iso_alpha_3_code: 'SUR')
country212 = Country.create!(name: 'Svalbard and Jan Mayen Islands', iso_alpha_2_code: 'SJ', iso_alpha_3_code: 'SJM')
country213 = Country.create!(name: 'Swaziland', iso_alpha_2_code: 'SZ', iso_alpha_3_code: 'SWZ')
country214 = Country.create!(name: 'Sweden', iso_alpha_2_code: 'SE', iso_alpha_3_code: 'SWE')
country215 = Country.create!(name: 'Switzerland', iso_alpha_2_code: 'CH', iso_alpha_3_code: 'CHE')
country216 = Country.create!(name: 'Syrian Arab Republic (Syria)', iso_alpha_2_code: 'SY', iso_alpha_3_code: 'SYR')
country217 = Country.create!(name: 'Taiwan, Republic of China', iso_alpha_2_code: 'TW', iso_alpha_3_code: 'TWN')
country218 = Country.create!(name: 'Tajikistan', iso_alpha_2_code: 'TJ', iso_alpha_3_code: 'TJK')
country219 = Country.create!(name: 'Tanzania, United Republic of', iso_alpha_2_code: 'TZ', iso_alpha_3_code: 'TZA')
country220 = Country.create!(name: 'Thailand', iso_alpha_2_code: 'TH', iso_alpha_3_code: 'THA')
country221 = Country.create!(name: 'Timor-Leste', iso_alpha_2_code: 'TL', iso_alpha_3_code: 'TLS')
country222 = Country.create!(name: 'Togo', iso_alpha_2_code: 'TG', iso_alpha_3_code: 'TGO')
country223 = Country.create!(name: 'Tokelau', iso_alpha_2_code: 'TK', iso_alpha_3_code: 'TKL')
country224 = Country.create!(name: 'Tonga', iso_alpha_2_code: 'TO', iso_alpha_3_code: 'TON')
country225 = Country.create!(name: 'Trinidad and Tobago', iso_alpha_2_code: 'TT', iso_alpha_3_code: 'TTO')
country226 = Country.create!(name: 'Tunisia', iso_alpha_2_code: 'TN', iso_alpha_3_code: 'TUN')
country227 = Country.create!(name: 'Turkey', iso_alpha_2_code: 'TR', iso_alpha_3_code: 'TUR')
country228 = Country.create!(name: 'Turkmenistan', iso_alpha_2_code: 'TM', iso_alpha_3_code: 'TKM')
country229 = Country.create!(name: 'Turks and Caicos Islands', iso_alpha_2_code: 'TC', iso_alpha_3_code: 'TCA')
country230 = Country.create!(name: 'Tuvalu', iso_alpha_2_code: 'TV', iso_alpha_3_code: 'TUV')
country231 = Country.create!(name: 'Uganda', iso_alpha_2_code: 'UG', iso_alpha_3_code: 'UGA')
country232 = Country.create!(name: 'Ukraine', iso_alpha_2_code: 'UA', iso_alpha_3_code: 'UKR')
country233 = Country.create!(name: 'United Arab Emirates', iso_alpha_2_code: 'AE', iso_alpha_3_code: 'ARE')
country234 = Country.create!(name: 'United Kingdom', iso_alpha_2_code: 'GB', iso_alpha_3_code: 'GBR')
country235 = Country.create!(name: 'United States of America', iso_alpha_2_code: 'US', iso_alpha_3_code: 'USA')
country236 = Country.create!(name: 'US Minor Outlying Islands', iso_alpha_2_code: 'UM', iso_alpha_3_code: 'UMI')
country237 = Country.create!(name: 'Uruguay', iso_alpha_2_code: 'UY', iso_alpha_3_code: 'URY')
country238 = Country.create!(name: 'Uzbekistan', iso_alpha_2_code: 'UZ', iso_alpha_3_code: 'UZB')
country239 = Country.create!(name: 'Vanuatu', iso_alpha_2_code: 'VU', iso_alpha_3_code: 'VUT')
country240 = Country.create!(name: 'Venezuela (Bolivarian Republic)', iso_alpha_2_code: 'VE', iso_alpha_3_code: 'VEN')
country241 = Country.create!(name: 'Viet Nam', iso_alpha_2_code: 'VN', iso_alpha_3_code: 'VNM')
country242 = Country.create!(name: 'Virgin Islands, US', iso_alpha_2_code: 'VI', iso_alpha_3_code: 'VIR')
country243 = Country.create!(name: 'Wallis and Futuna Islands', iso_alpha_2_code: 'WF', iso_alpha_3_code: 'WLF')
country244 = Country.create!(name: 'Western Sahara', iso_alpha_2_code: 'EH', iso_alpha_3_code: 'ESH')
country245 = Country.create!(name: 'Yemen', iso_alpha_2_code: 'YE', iso_alpha_3_code: 'YEM')
country246 = Country.create!(name: 'Zambia', iso_alpha_2_code: 'ZM', iso_alpha_3_code: 'ZMB')
country247 = Country.create!(name: 'Zimbabwe', iso_alpha_2_code: 'ZW', iso_alpha_3_code: 'ZWE')

puts "Seed: Seeding companies..."

company1 = Company.create!(
  name: "Siemens"
)

company2 = Company.create!(
  name: "Adidas"
)

company3 = Company.create!(
  name: "Bayer"
)

company4 = Company.create!(
  name: "BAFS"
)

puts "Seed: Seeding users..."

user1 = User.create!(
  email: "hans.maier@siemens.com",
  first_name: "Hans",
  last_name: "Maier",
  company: company1,
  password: "123456"
)

user2 = User.create!(
  email: "bilbo.baggins@basf.com",
  first_name: "Bilbo",
  last_name: "Baggins",
  password: "123456"
)

user3 = User.create!(
  email: "barack.obama@adidas.com",
  first_name: "Barack",
  last_name: "Obama",
  password: "123456"
)

puts "Seed: Seeding tickets..."

ticket1 = Ticket.create!(
  max_time: 30,
  actual_time: 30,
  user: user1,
  billed: true,
  paid: true,
  status: "closed",
  type_of_issue: "knowledge",
  satisfaction: true,
  title: "Mildly bad issue"
)

ticket2 = Ticket.create!(
  max_time: 120,
  user: user1,
  title: "Very bad issue",
  description: "Ahhhh help me"
)

ticket3 = Ticket.create!(
  max_time: 30,
  user: user2,
)

puts "Seed: Seeding user uploads..."

puts "Seed: No user uploads possible yet :("

#  create_table "useruploads", force: :cascade do |t|
#    t.string "name"
#    t.string "comment"
#    t.string "datatype"
#    t.integer "size"
#    t.string "cloud_identifier"
#    t.bigint "ticket_id"
#    t.datetime "created_at", null: false
#    t.datetime "updated_at", null: false
#    t.index ["ticket_id"], name: "index_useruploads_on_ticket_id"
#  end

puts "Seed: Seeding comments..."

Comment.create!(
  ticket: ticket1,
  content: "Very good job, thanks."
)

Comment.create!(
  ticket: ticket2,
  content: "Ah, such a bad problem. Please help fast."
)
