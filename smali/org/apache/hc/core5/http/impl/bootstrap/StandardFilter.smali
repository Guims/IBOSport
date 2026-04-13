.class public final enum Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

.field public static final enum EXPECT_CONTINUE:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

.field public static final enum MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    const-string v1, "EXPECT_CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->EXPECT_CONTINUE:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    const-string v2, "MAIN_HANDLER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->$VALUES:[Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->$VALUES:[Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    return-object v0
.end method
