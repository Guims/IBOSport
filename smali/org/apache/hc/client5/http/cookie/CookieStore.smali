.class public interface abstract Lorg/apache/hc/client5/http/cookie/CookieStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCookie(Lorg/apache/hc/client5/http/cookie/Cookie;)V
.end method

.method public abstract clear()V
.end method

.method public clearExpired(Ljava/time/Instant;)Z
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, LW3/h;->d(Ljava/time/Instant;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/hc/client5/http/cookie/CookieStore;->clearExpired(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public abstract clearExpired(Ljava/util/Date;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCookies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method
