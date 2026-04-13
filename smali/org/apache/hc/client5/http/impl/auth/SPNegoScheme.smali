.class public Lorg/apache/hc/client5/http/impl/auth/SPNegoScheme;
.super Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Experimental;
.end annotation


# static fields
.field private static final SPNEGO_OID:Ljava/lang/String; = "1.3.6.1.5.5.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method


# virtual methods
.method public generateToken([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.3.6.1.5.5.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Negotiate"

    return-object v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
