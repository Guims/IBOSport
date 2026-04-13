.class Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;
.super Ljava/lang/Object;


# instance fields
.field private final handler:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

.field private final next:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/classic/ExecChainHandler;Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->handler:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->next:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->handler:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->next:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/hc/client5/http/impl/classic/a;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/classic/a;-><init>(Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v2}, Lorg/apache/hc/client5/http/classic/ExecChainHandler;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{handler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->handler:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->next:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->handler:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

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
