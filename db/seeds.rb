# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts 'Cleaning database...'
Post.destroy_all
User.destroy_all

User.create(email: 'terraz.plomberie@gmail.com', password: 'TerrazNico139!')

post1 = Post.create(title: 'Nouvelle plomberie pour Mme Safran !', description: "Lors de notre dernière intervention, nous avons effectué un changement de plomberie chez une cliente qui avait des problèmes avec ses tuyaux d'eau. Nous avons commencé par vérifier la pression de l'eau dans sa maison en utilisant un manomètre. Nous avons ensuite déterminé que la cause du problème était une obstruction dans la tuyauterie. Nous avons utilisé une caméra d'inspection pour localiser le bouchon et avons utilisé une ventouse pour le dégager.
                                                                              Après avoir retiré le bouchon, nous avons procédé au remplacement des tuyaux endommagés. Nous avons utilisé du tuyau en PVC pour remplacer les tuyaux en cuivre usagés. Nous avons également remplacé les raccords de plomberie qui étaient corrodés.
                                                                              Une fois le nouveau système installé, nous avons effectué des tests pour nous assurer que tout fonctionnait correctement. Nous avons vérifié que l'eau s'écoulait correctement dans tous les tuyaux et que la pression était correcte. Nous avons également vérifié que tous les joints étaient étanches et que rien ne fuyait.
                                                                              Enfin, nous avons donné à la cliente des conseils pour l'entretien de ses nouveaux tuyaux. Nous lui avons recommandé de ne pas jeter de déchets solides dans ses toilettes, de ne pas verser de graisses ou d'huiles dans ses éviers et de ne pas utiliser de produits chimiques agressifs.")
post1.photo.attach(io: URI.open('https://source.unsplash.com/random/?sink/'), filename: 'random-plumber1.jpg', content_type: 'image/jpg')

post2 = Post.create(title: 'Entretien du système de climatisation', description: "Lors de notre dernière intervention, nous avons effectué un changement de plomberie chez une cliente qui avait des problèmes avec ses tuyaux d'eau. Nous avons commencé par vérifier la pression de l'eau dans sa maison en utilisant un manomètre. Nous avons ensuite déterminé que la cause du problème était une obstruction dans la tuyauterie. Nous avons utilisé une caméra d'inspection pour localiser le bouchon et avons utilisé une ventouse pour le dégager.
                                                              Après avoir retiré le bouchon, nous avons procédé au remplacement des tuyaux endommagés. Nous avons utilisé du tuyau en PVC pour remplacer les tuyaux en cuivre usagés. Nous avons également remplacé les raccords de plomberie qui étaient corrodés.
                                                              Une fois le nouveau système installé, nous avons effectué des tests pour nous assurer que tout fonctionnait correctement. Nous avons vérifié que l'eau s'écoulait correctement dans tous les tuyaux et que la pression était correcte. Nous avons également vérifié que tous les joints étaient étanches et que rien ne fuyait.
                                                              Enfin, nous avons donné à la cliente des conseils pour l'entretien de ses nouveaux tuyaux. Nous lui avons recommandé de ne pas jeter de déchets solides dans ses toilettes, de ne pas verser de graisses ou d'huiles dans ses éviers et de ne pas utiliser de produits chimiques agressifs.")
post2.photo.attach(io: URI.open('https://source.unsplash.com/random/?airconditioner/'), filename: 'random-plumber2.jpg', content_type: 'image/jpg')

post3 = Post.create(title: 'Rénovation de salle de bain réussie !', description: "Lors de notre dernière intervention, nous avons effectué un changement de plomberie chez une cliente qui avait des problèmes avec ses tuyaux d'eau. Nous avons commencé par vérifier la pression de l'eau dans sa maison en utilisant un manomètre. Nous avons ensuite déterminé que la cause du problème était une obstruction dans la tuyauterie. Nous avons utilisé une caméra d'inspection pour localiser le bouchon et avons utilisé une ventouse pour le dégager.
                                                              Après avoir retiré le bouchon, nous avons procédé au remplacement des tuyaux endommagés. Nous avons utilisé du tuyau en PVC pour remplacer les tuyaux en cuivre usagés. Nous avons également remplacé les raccords de plomberie qui étaient corrodés.
                                                              Une fois le nouveau système installé, nous avons effectué des tests pour nous assurer que tout fonctionnait correctement. Nous avons vérifié que l'eau s'écoulait correctement dans tous les tuyaux et que la pression était correcte. Nous avons également vérifié que tous les joints étaient étanches et que rien ne fuyait.
                                                              Enfin, nous avons donné à la cliente des conseils pour l'entretien de ses nouveaux tuyaux. Nous lui avons recommandé de ne pas jeter de déchets solides dans ses toilettes, de ne pas verser de graisses ou d'huiles dans ses éviers et de ne pas utiliser de produits chimiques agressifs.")
post3.photo.attach(io: URI.open('https://source.unsplash.com/random/?bathroom/'), filename: 'random-plumber3.jpg', content_type: 'image/jpg')
