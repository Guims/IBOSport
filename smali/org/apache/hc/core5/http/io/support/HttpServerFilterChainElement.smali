.class public final Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;
.super Ljava/lang/Object;


# instance fields
.field private final filterChain:Lorg/apache/hc/core5/http/io/HttpFilterChain;

.field private final handler:Lorg/apache/hc/core5/http/io/HttpFilterHandler;

.field private final next:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/HttpFilterHandler;Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handler:Lorg/apache/hc/core5/http/io/HttpFilterHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->next:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    if-eqz p2, :cond_0

    new-instance p1, LA3/d;

    const/16 v0, 0x18

    invoke-direct {p1, v0, p2}, LA3/d;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->filterChain:Lorg/apache/hc/core5/http/io/HttpFilterChain;

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handler:Lorg/apache/hc/core5/http/io/HttpFilterHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->filterChain:Lorg/apache/hc/core5/http/io/HttpFilterChain;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/hc/core5/http/io/HttpFilterHandler;->handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpFilterChain;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{handler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handler:Lorg/apache/hc/core5/http/io/HttpFilterHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->next:Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/hc/core5/http/io/support/HttpServerFilterChainElement;->handler:Lorg/apache/hc/core5/http/io/HttpFilterHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
