.class Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$1;
.super Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/cookie/CookieSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$1;->this$0:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V
    .locals 0

    return-void
.end method
