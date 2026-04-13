.class public Lorg/apache/hc/client5/http/auth/KerberosCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/Credentials;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c3ab6015b52cf9L


# instance fields
.field private final gssCredential:Lorg/ietf/jgss/GSSCredential;


# direct methods
.method public constructor <init>(Lorg/ietf/jgss/GSSCredential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosCredentials;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    return-void
.end method


# virtual methods
.method public getGSSCredential()Lorg/ietf/jgss/GSSCredential;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosCredentials;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
