module module_2::hero {
    use std::string::String;
    
     public struct Hero has key, store {
        // TODO: Add the fields for the Hero
        // 1. The id of the Hero
id::UID,
        // 2. The name of the Hero
name:strign,
        // 3. The imageurl of the Hero
image_url:string,
        // 4. The power of the Hero
power:u64
    }

    #[allow(lint(self_transfer))]
    public entry fun create_hero(name: String, image_url: String, power: u64,  ctx: &mut TxContext) {
        // TODO: Create the Hero object
let hero:Hero=Hero{
id:object::new(ctx:ctx),
name:name,
image_url:image_url,
power:power};

        // TODO: Transfer the Hero object to the sender
transfer::transfer(obj:hero,recipient:ctx.sender());
    }

    public entry fun transfer_hero(hero: Hero, to: address) {
        // TODO: Transfer the Hero object to the recipient
transfer::transfer(obj:hero,recipient:to)
    }
    
    // ========= GETTER FUNCTIONS =========

    #[test_only]
    public fun hero_name(hero: &Hero): String {
        hero.name
    }

    #[test_only]
    public fun hero_power(hero: &Hero): u64 {
        hero.power
    }
    
    #[test_only]
    public fun hero_image_url(hero: &Hero): String {
        hero.image_url
    }
}
