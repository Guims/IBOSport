.class public final Lq5/j;
.super Le5/h;

# interfaces
.implements Ld5/p;


# static fields
.field public static final b:Lq5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq5/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le5/h;-><init>(I)V

    sput-object v0, Lq5/j;->b:Lq5/j;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, LV4/g;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
