.class public Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/hc/client5/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;->INSTANCE:Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPathLength(Lorg/apache/hc/client5/http/cookie/Cookie;)I
    .locals 0

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/cookie/Cookie;

    check-cast p2, Lorg/apache/hc/client5/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;->compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/Cookie;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/hc/client5/http/cookie/Cookie;)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/hc/client5/http/cookie/Cookie;)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getCreationInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/hc/client5/http/cookie/Cookie;->getCreationInstant()Ljava/time/Instant;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, LW3/h;->c(Ljava/time/Instant;Ljava/time/Instant;)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method
