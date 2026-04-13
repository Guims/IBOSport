.class public Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/cookie/CookieSpec;
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    return-object p1
.end method
