.class public final LV/b;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:LK5/z;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:LV/c;

.field public t:I


# direct methods
.method public constructor <init>(LV/c;LX4/c;)V
    .locals 0

    iput-object p1, p0, LV/b;->s:LV/c;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LV/b;->r:Ljava/lang/Object;

    iget p1, p0, LV/b;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LV/b;->t:I

    iget-object p1, p0, LV/b;->s:LV/c;

    invoke-static {p1, p0}, LV/c;->a(LV/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
