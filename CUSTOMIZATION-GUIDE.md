# 🎨 ProjectFlow Customization Guide

## How to Update Settings, Names, Assignees & Users

This guide shows you exactly how to customize ProjectFlow with your own data, team members, and settings.

---

## 📝 **Step 1: Update Team Members & Users**

### Location: `src/lib/mockData.ts`

**Find this section (around line 25):**
```typescript
export const mockTeamMembers: TeamMember[] = [
  {
    id: '1',
    name: 'Alice Johnson',        // ← Change this name
    email: 'alice@company.com',   // ← Change this email
    role: 'Project Manager'       // ← Change this role
  },
  {
    id: '2',
    name: 'Bob Smith',
    email: 'bob@company.com',
    role: 'Developer'
  },
  // ... more team members
];
```

**Replace with your team:**
```typescript
export const mockTeamMembers: TeamMember[] = [
  {
    id: '1',
    name: 'Your Name',
    email: 'your.email@company.com',
    role: 'Team Lead'
  },
  {
    id: '2',
    name: 'Team Member 1',
    email: 'member1@company.com',
    role: 'Developer'
  },
  {
    id: '3',
    name: 'Team Member 2',
    email: 'member2@company.com',
    role: 'Designer'
  },
  // Add more team members as needed
];
```

---

## 🎯 **Step 2: Update Current User (Top Right Corner)**

### Location: `src/components/Navigation.tsx`

**Find this section (around line 45):**
```typescript
<div className="flex items-center space-x-2">
  <div className="h-8 w-8 rounded-full bg-secondary flex items-center justify-center">
    <span className="text-secondary-foreground font-medium text-sm">JD</span>  // ← Change initials
  </div>
  <span className="text-sm font-medium">John Doe</span>  // ← Change name
</div>
```

**Replace with your info:**
```typescript
<div className="flex items-center space-x-2">
  <div className="h-8 w-8 rounded-full bg-secondary flex items-center justify-center">
    <span className="text-secondary-foreground font-medium text-sm">YN</span>  // Your initials
  </div>
  <span className="text-sm font-medium">Your Name</span>  // Your name
</div>
```

---

## 📋 **Step 3: Update Project Boards & Tasks**

### Location: `src/lib/mockData.ts`

**Find the mockBoards section (around line 85):**
```typescript
export const mockBoards: Board[] = [
  {
    id: '1',
    title: 'Website Redesign Project',           // ← Change project name
    description: 'Complete redesign of...',     // ← Change description
    tasks: [mockTasks[0], mockTasks[2], mockTasks[4]], // ← Assign tasks
    members: [mockTeamMembers[0], mockTeamMembers[2]], // ← Assign members
    createdAt: '2024-01-01',
    updatedAt: '2024-01-10'
  },
  // Add your own projects here
];
```

**Replace with your projects:**
```typescript
export const mockBoards: Board[] = [
  {
    id: '1',
    title: 'My First Project',
    description: 'Description of what this project is about',
    tasks: [mockTasks[0], mockTasks[1]], // Reference tasks by index
    members: [mockTeamMembers[0], mockTeamMembers[1]], // Reference team members
    createdAt: '2024-01-01',
    updatedAt: '2024-01-10'
  },
  {
    id: '2',
    title: 'My Second Project',
    description: 'Another project description',
    tasks: [mockTasks[2], mockTasks[3]],
    members: [mockTeamMembers[1], mockTeamMembers[2]],
    createdAt: '2024-01-02',
    updatedAt: '2024-01-11'
  }
];
```

---

## ✅ **Step 4: Update Tasks**

### Location: `src/lib/mockData.ts`

**Find the mockTasks section (around line 45):**
```typescript
export const mockTasks: Task[] = [
  {
    id: '1',
    title: 'Design landing page mockups',        // ← Change task title
    description: 'Create wireframes and...',     // ← Change description
    status: 'in-progress',                       // ← Change status
    priority: 'high',                           // ← Change priority
    assignee: mockTeamMembers[2],               // ← Change assignee
    dueDate: '2024-01-15',                      // ← Change due date
    createdAt: '2024-01-01',
    updatedAt: '2024-01-05'
  },
  // Add more tasks...
];
```

**Task Status Options:**
- `'todo'` - To Do
- `'in-progress'` - In Progress  
- `'review'` - Review
- `'done'` - Done

**Priority Options:**
- `'low'` - Low Priority
- `'medium'` - Medium Priority
- `'high'` - High Priority
- `'urgent'` - Urgent

---

## 🏢 **Step 5: Update Company/App Name**

### Location: `src/components/Navigation.tsx`

**Find this section (around line 20):**
```typescript
<Link href="/dashboard" className="flex items-center space-x-2">
  <div className="h-8 w-8 rounded bg-primary flex items-center justify-center">
    <span className="text-primary-foreground font-bold text-sm">M</span>  // ← Change logo letter
  </div>
  <span className="font-bold text-xl">Monday Clone</span>  // ← Change app name
</Link>
```

**Replace with your branding:**
```typescript
<Link href="/dashboard" className="flex items-center space-x-2">
  <div className="h-8 w-8 rounded bg-primary flex items-center justify-center">
    <span className="text-primary-foreground font-bold text-sm">P</span>  // Your logo letter
  </div>
  <span className="font-bold text-xl">ProjectFlow</span>  // Your app name
</Link>
```

---

## 🔄 **Step 6: Apply Changes**

After making your changes:

### Option 1: Development Mode (Recommended for customization)
```bash
npm run dev
```
- Changes appear instantly
- Perfect for testing your customizations
- Open: `http://localhost:8000`

### Option 2: Production Build
```bash
npm run build
serve out -p 3000
```
- Rebuild after all changes are complete
- Open: `http://localhost:3000`

---

## 📋 **Quick Customization Checklist**

- [ ] Update team member names and emails in `mockTeamMembers`
- [ ] Change current user name and initials in `Navigation.tsx`
- [ ] Update project board titles and descriptions in `mockBoards`
- [ ] Modify task titles, descriptions, and assignees in `mockTasks`
- [ ] Change app name and logo in `Navigation.tsx`
- [ ] Update page titles in `src/app/layout.tsx` (optional)
- [ ] Test changes with `npm run dev`
- [ ] Build for production with `npm run build`

---

## 🎨 **Advanced Customizations**

### Change Colors & Theme
Edit CSS variables in `src/app/globals.css` (lines 25-50)

### Add More Team Members
Simply add more objects to the `mockTeamMembers` array

### Create New Projects
Add more objects to the `mockBoards` array with unique IDs

### Add More Tasks
Expand the `mockTasks` array and reference them in your boards

---

## 💡 **Pro Tips**

1. **Start Small**: Change one thing at a time and test
2. **Keep IDs Unique**: Each team member, task, and board needs a unique ID
3. **Reference Correctly**: Use array indices to assign tasks and members to boards
4. **Test Often**: Use `npm run dev` to see changes immediately
5. **Backup First**: Copy `mockData.ts` before making major changes

---

## 🚀 **Example: Complete Custom Setup**

Here's a complete example of customizing for a marketing team:

```typescript
// Team Members
export const mockTeamMembers: TeamMember[] = [
  {
    id: '1',
    name: 'Sarah Wilson',
    email: 'sarah@marketing.com',
    role: 'Marketing Director'
  },
  {
    id: '2',
    name: 'Mike Chen',
    email: 'mike@marketing.com',
    role: 'Content Creator'
  },
  {
    id: '3',
    name: 'Lisa Rodriguez',
    email: 'lisa@marketing.com',
    role: 'Social Media Manager'
  }
];

// Tasks
export const mockTasks: Task[] = [
  {
    id: '1',
    title: 'Create Q1 Campaign Strategy',
    description: 'Develop comprehensive marketing strategy for Q1',
    status: 'in-progress',
    priority: 'high',
    assignee: mockTeamMembers[0],
    dueDate: '2024-02-01',
    createdAt: '2024-01-01',
    updatedAt: '2024-01-05'
  },
  // More tasks...
];

// Boards
export const mockBoards: Board[] = [
  {
    id: '1',
    title: 'Q1 Marketing Campaign',
    description: 'First quarter marketing initiatives and content creation',
    tasks: [mockTasks[0]],
    members: [mockTeamMembers[0], mockTeamMembers[1]],
    createdAt: '2024-01-01',
    updatedAt: '2024-01-10'
  }
];
```

Now you can fully customize ProjectFlow with your own team, projects, and branding! 🎉
