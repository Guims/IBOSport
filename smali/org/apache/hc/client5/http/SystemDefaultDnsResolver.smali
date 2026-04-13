.class public Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/DnsResolver;


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method
