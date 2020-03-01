package main

import "github.com/gin-gonic/gin"

func main() {
    r := gin.Default()
    r.GET("/hc", func(c *gin.Context) {
        c.JSON(200, gin.H{
            "response": "hello world",
        })
    })
    // ポートを設定
    r.Run(":3001")
}
