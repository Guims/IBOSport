.class public Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;
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
.field public static final INSTANCE:Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;

.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;->INSTANCE:Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/cookie/Cookie;

    check-cast p2, Lorg/apache/hc/client5/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookieIdentityComparator;->compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I
    .locals 3

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/client5/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {p2}, Lorg/apache/hc/client5/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-interface {p2}, Lorg/apache/hc/client5/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    return v0
.end method
