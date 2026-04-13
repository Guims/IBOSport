.class public final Lv2/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lv2/b;


# instance fields
.field public final a:Lv0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv0/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lv2/b;

    invoke-direct {v2, v0, v1}, Lv2/b;-><init>(Lv0/n;Landroid/os/Looper;)V

    sput-object v2, Lv2/b;->b:Lv2/b;

    return-void
.end method

.method public constructor <init>(Lv0/n;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/b;->a:Lv0/n;

    return-void
.end method
