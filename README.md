# Zen

Zen is a test framework for DM (dream maker)

## How to write a test

// Expected pass
zen/person/test()

    var/person/lisa = zen.mock(/mock/person/Lisa)

    zen.assertEquals(
    	"Lisa's description prints accurately",,
    	lisa.description(),
    	"name: lisa, age: 35"
    )
