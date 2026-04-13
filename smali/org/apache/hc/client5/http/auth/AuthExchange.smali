.class public Lorg/apache/hc/client5/http/auth/AuthExchange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/auth/AuthExchange$State;
    }
.end annotation


# instance fields
.field private authOptions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation
.end field

.field private authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

.field private pathPrefix:Ljava/lang/String;

.field private state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    return-void
.end method


# virtual methods
.method public getAuthOptions()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authOptions:Ljava/util/Queue;

    return-object v0
.end method

.method public getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    return-object v0
.end method

.method public getPathPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->pathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    return-object v0
.end method

.method public isConnectionBased()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authOptions:Ljava/util/Queue;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->pathPrefix:Ljava/lang/String;

    return-void
.end method

.method public select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V
    .locals 1

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authOptions:Ljava/util/Queue;

    return-void
.end method

.method public setOptions(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Queue of auth options"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authOptions:Ljava/util/Queue;

    return-void
.end method

.method public setPathPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->pathPrefix:Ljava/lang/String;

    return-void
.end method

.method public setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->state:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/AuthExchange;->authScheme:Lorg/apache/hc/client5/http/auth/AuthScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
