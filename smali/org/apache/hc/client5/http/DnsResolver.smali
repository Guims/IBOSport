.class public interface abstract Lorg/apache/hc/client5/http/DnsResolver;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method

.method public abstract resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;
.end method
