.class public Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "httpOnly"

    return-object v0
.end method

.method public match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 0

    const-string p2, "Cookie"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setHttpOnly(Z)V

    return-void
.end method

.method public validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V
    .locals 0

    return-void
.end method
