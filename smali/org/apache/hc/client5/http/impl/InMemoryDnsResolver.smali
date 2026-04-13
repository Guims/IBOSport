.class public Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/DnsResolver;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final dnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->dnsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 1

    const-string v0, "Host name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Array of IP addresses"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->dnsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resolve(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->dnsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    sget-object v1, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Resolving {} to {}"

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3, v2}, LO5/a;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, " cannot be resolved"

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/InMemoryDnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
