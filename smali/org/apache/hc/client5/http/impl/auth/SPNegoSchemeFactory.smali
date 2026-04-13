.class public Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Experimental;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;


# instance fields
.field private final config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

.field private final dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    sget-object v1, Lorg/apache/hc/client5/http/auth/KerberosConfig;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    sget-object v2, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 2

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/SPNegoScheme;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/client5/http/impl/auth/SPNegoScheme;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-object p1
.end method
