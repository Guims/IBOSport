.class Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;
.super Ljava/lang/Object;


# instance fields
.field private final handler:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

.field private final next:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->handler:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->next:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->handler:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->next:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/b;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/async/b;-><init>(Ljava/lang/Object;)V

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v4, v2

    move-object v2, p2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{handler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->handler:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->next:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->handler:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

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
