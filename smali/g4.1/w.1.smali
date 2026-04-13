.class public final Lg4/w;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lg4/t;

.field public s:I


# direct methods
.method public constructor <init>(Lg4/t;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lg4/w;->r:Lg4/t;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg4/w;->q:Ljava/lang/Object;

    iget p1, p0, Lg4/w;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg4/w;->s:I

    iget-object p1, p0, Lg4/w;->r:Lg4/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lg4/t;->a(LY3/e;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
