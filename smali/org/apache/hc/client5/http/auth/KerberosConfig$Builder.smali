.class public Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/auth/KerberosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field private stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

.field private useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iput-object v0, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/auth/KerberosConfig;
    .locals 4

    new-instance v0, Lorg/apache/hc/client5/http/auth/KerberosConfig;

    iget-object v1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iget-object v2, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    iget-object v3, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/auth/KerberosConfig;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)V

    return-object v0
.end method

.method public setRequestDelegCreds(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->requestDelegCreds:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method

.method public setStripPort(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method

.method public setStripPort(Z)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->ENABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->stripPort:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method

.method public setUseCanonicalHostname(Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method

.method public setUseCanonicalHostname(Z)Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->ENABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/auth/KerberosConfig$Builder;->useCanonicalHostname:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    return-object p0
.end method
