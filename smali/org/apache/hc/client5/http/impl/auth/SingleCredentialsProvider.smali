.class final Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/CredentialsProvider;


# instance fields
.field private final authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

.field private final credentials:Lorg/apache/hc/client5/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/auth/AuthScope;Ljava/lang/String;[C)V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p2, p3}, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;-><init>(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Auth scope"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/auth/AuthScope;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;->authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;->credentials:Lorg/apache/hc/client5/http/auth/Credentials;

    return-void
.end method


# virtual methods
.method public getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;->authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-virtual {p2, p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->match(Lorg/apache/hc/client5/http/auth/AuthScope;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;->credentials:Lorg/apache/hc/client5/http/auth/Credentials;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;->authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthScope;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
