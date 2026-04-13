.class public final synthetic Lo5/c;
.super Le5/f;

# interfaces
.implements Ld5/p;


# static fields
.field public static final x:Lo5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo5/c;

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lo5/d;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Le5/f;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lo5/c;->x:Lo5/c;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-object v3, p2

    check-cast v3, Lo5/j;

    sget-object p1, Lo5/d;->a:Lo5/j;

    new-instance v0, Lo5/j;

    iget-object v4, v3, Lo5/j;->t:Lo5/b;

    invoke-static {v4}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo5/j;-><init>(JLo5/j;Lo5/b;I)V

    return-object v0
.end method
