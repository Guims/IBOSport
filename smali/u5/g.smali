.class public final synthetic Lu5/g;
.super Le5/f;

# interfaces
.implements Ld5/p;


# static fields
.field public static final x:Lu5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lu5/g;

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lu5/i;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Le5/f;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lu5/g;->x:Lu5/g;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lu5/j;

    sget p1, Lu5/i;->a:I

    new-instance p1, Lu5/j;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p2, v2}, Lu5/j;-><init>(JLu5/j;I)V

    return-object p1
.end method
