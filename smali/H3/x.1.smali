.class public final LH3/x;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/x;

.field public static final b:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/x;->a:LH3/x;

    const-string v0, "assignments"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/x;->b:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LH3/J0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/h0;

    iget-object p1, p1, LH3/h0;->a:Ljava/util/List;

    sget-object v0, LH3/x;->b:LR3/c;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
