.class public Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;
.super Lorg/apache/hc/client5/http/impl/cookie/CookieSpecBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/IgnoreSpecSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/CookieSpecBase;-><init>()V

    return-void
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public parse(Lorg/apache/hc/core5/http/Header;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 0
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

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method
