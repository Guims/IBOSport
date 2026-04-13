.class public Lorg/apache/hc/client5/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lorg/apache/hc/client5/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/cookie/CookiePathComparator;

.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;->INSTANCE:Lorg/apache/hc/client5/http/cookie/CookiePathComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/cookie/Cookie;

    check-cast p2, Lorg/apache/hc/client5/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;->compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
