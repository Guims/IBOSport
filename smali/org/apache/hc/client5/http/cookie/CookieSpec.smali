.class public interface abstract Lorg/apache/hc/client5/http/cookie/CookieSpec;
.super Ljava/lang/Object;


# virtual methods
.method public abstract formatCookies(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z
.end method

.method public abstract parse(Lorg/apache/hc/core5/http/Header;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/Header;",
            "Lorg/apache/hc/client5/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V
.end method
