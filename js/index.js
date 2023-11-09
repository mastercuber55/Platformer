Scene = {}

Scene.Game = class extends Phaser.Scene {
    preload () {
        this.load.setBaseURL('Assets/');
        this.load.image('Player', 'Tiles/Characters/tile_0000.png');
    }

    create () {
        this.physics.add.image(400, 300, 'Player');
    }
    update() {

    }
}

const Game = new Phaser.Game({
    type: Phaser.AUTO,
    width: 800,
    height: 600,
    scene: Scene.Game,
    physics: {
        default: 'arcade',
        arcade: {
            gravity: { y: 200 }
        }
    }
});
