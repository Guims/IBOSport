.class public Lorg/apache/hc/client5/http/auth/KerberosConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;,
        Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig;


# instance fields
.field private final requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field private final stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field private final useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->build()Lorg/apache/hc/client5/http/auth/KerberosConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iput-object p2, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iput-object p3, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-void
.end method

.method public static copy(Lorg/apache/hc/client5/http/auth/KerberosConfig;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getStripPort()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->setStripPort(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getUseCanonicalHostname()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->setUseCanonicalHostname(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getRequestDelegCreds()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->setRequestDelegCreds(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->clone()Lorg/apache/hc/client5/http/auth/KerberosConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/hc/client5/http/auth/KerberosConfig;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/KerberosConfig;

    return-object v0
.end method

.method public getRequestDelegCreds()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object v0
.end method

.method public getStripPort()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object v0
.end method

.method public getUseCanonicalHostname()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[stripPort="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCanonicalHostname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestDelegCreds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
