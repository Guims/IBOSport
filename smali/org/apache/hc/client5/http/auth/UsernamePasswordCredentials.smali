.class public Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36087f34635c8cbL


# instance fields
.field private final password:[C

.field private final principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Username"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    iput-object p2, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->password:[C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    iget-object p1, p1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->password:[C

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
