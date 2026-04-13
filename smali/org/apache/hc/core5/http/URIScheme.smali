.class public final enum Lorg/apache/hc/core5/http/URIScheme;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/URIScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/URIScheme;

.field public static final enum HTTP:Lorg/apache/hc/core5/http/URIScheme;

.field public static final enum HTTPS:Lorg/apache/hc/core5/http/URIScheme;


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/URIScheme;

    const/4 v1, 0x0

    const-string v2, "http"

    const-string v3, "HTTP"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/hc/core5/http/URIScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    new-instance v1, Lorg/apache/hc/core5/http/URIScheme;

    const/4 v2, 0x1

    const-string v3, "https"

    const-string v4, "HTTPS"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/hc/core5/http/URIScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/http/URIScheme;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/URIScheme;->$VALUES:[Lorg/apache/hc/core5/http/URIScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "id"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/URIScheme;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/URIScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/URIScheme;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/URIScheme;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->$VALUES:[Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/URIScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/URIScheme;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    return-object v0
.end method

.method public same(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    return-object v0
.end method
