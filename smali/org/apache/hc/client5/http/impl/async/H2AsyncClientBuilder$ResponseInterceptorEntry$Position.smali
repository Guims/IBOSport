.class final enum Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

.field public static final enum FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

.field public static final enum LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    const-string v2, "LAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    filled-new-array {v0, v1}, [Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->$VALUES:[Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->$VALUES:[Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    invoke-virtual {v0}, [Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    return-object v0
.end method
