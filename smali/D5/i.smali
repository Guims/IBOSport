.class public abstract LD5/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:LD5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD5/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LD5/i;->a:LD5/h;

    return-void
.end method


# virtual methods
.method public a(LD5/q;LD5/D;)V
    .locals 0

    const-string p1, "settings"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(LD5/y;)V
.end method
