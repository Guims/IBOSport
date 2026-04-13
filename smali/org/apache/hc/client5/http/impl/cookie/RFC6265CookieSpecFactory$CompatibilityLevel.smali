.class public final enum Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibilityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

.field public static final enum IE_MEDIUM_SECURITY:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

.field public static final enum RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

.field public static final enum STRICT:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->STRICT:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    new-instance v1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    const-string v2, "RELAXED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    new-instance v2, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    const-string v3, "IE_MEDIUM_SECURITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->$VALUES:[Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->$VALUES:[Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-virtual {v0}, [Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    return-object v0
.end method
